; ModuleID = 'main'
source_filename = "main"

%main.S = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.impl = type {}
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global ptr null
@0 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@_llgo_main.impl = global ptr null
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null
@1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"main.one\00", align 1
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null
@_llgo_int = linkonce global ptr null
@4 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"main.two\00", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null
@_llgo_string = linkonce global ptr null
@6 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@7 = private unnamed_addr constant [10 x i8] c"main.impl\00", align 1
@"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = global ptr null
@8 = private unnamed_addr constant [9 x i8] c"main.one\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"main.two\00", align 1
@10 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_llgo_main.I = linkonce global ptr null
@12 = private unnamed_addr constant [9 x i8] c"main.one\00", align 1
@13 = private unnamed_addr constant [9 x i8] c"main.two\00", align 1
@14 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@15 = private unnamed_addr constant [7 x i8] c"main.I\00", align 1
@16 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@17 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@20 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@22 = private unnamed_addr constant [22 x i8] c"type assertion failed\00", align 1
@23 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"pass\00", align 1

define i64 @main.S.one(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %main.S %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call i64 %14(ptr %13)
  ret i64 %15
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.S.two(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %1, i64 16)
  store %main.S %0, ptr %2, align 8
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %3, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %4)
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %4, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = alloca { ptr, ptr }, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds { ptr, ptr }, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 8
  %12 = load { ptr, ptr }, ptr %9, align 8
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" %14(ptr %13)
  ret %"github.com/goplus/llgo/internal/runtime.String" %15
}

define i64 @"main.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  ret i64 %13
}

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" %12(ptr %11)
  ret %"github.com/goplus/llgo/internal/runtime.String" %13
}

define i64 @main.impl.one(%main.impl %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.impl.two(%main.impl %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 3, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  ret %"github.com/goplus/llgo/internal/runtime.String" %4
}

define i64 @"main.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call i64 @main.impl.one(%main.impl %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/internal/runtime.String" @"main.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @main.impl.two(%main.impl %1)
  ret %"github.com/goplus/llgo/internal/runtime.String" %2
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
  %2 = alloca %main.S, align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %2, i64 16)
  %4 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr @_llgo_main.impl, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.impl zeroinitializer, ptr %6, align 1
  %7 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %7, ptr %5)
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, i32 0, i32 1
  store ptr %6, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %9, align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %12, ptr %4, align 8
  %13 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %14 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %14)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %14, 0
  %17 = getelementptr ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = alloca { ptr, ptr }, align 8
  %20 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %19, i32 0, i32 1
  store ptr %15, ptr %21, align 8
  %22 = load { ptr, ptr }, ptr %19, align 8
  %23 = extractvalue { ptr, ptr } %22, 1
  %24 = extractvalue { ptr, ptr } %22, 0
  %25 = call i64 %24(ptr %23)
  %26 = icmp ne i64 %25, 1
  br i1 %26, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %27, i32 0, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = or i8 %29, 32
  store i8 %30, ptr %28, align 1
  %31 = inttoptr i64 %25 to ptr
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 0
  store ptr %27, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 1
  store ptr %31, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %35)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %36 = load %main.S, ptr %3, align 8
  %37 = extractvalue %main.S %36, 0
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %37)
  %39 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %37, 0
  %40 = getelementptr ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  %42 = alloca { ptr, ptr }, align 8
  %43 = getelementptr inbounds { ptr, ptr }, ptr %42, i32 0, i32 0
  store ptr %41, ptr %43, align 8
  %44 = getelementptr inbounds { ptr, ptr }, ptr %42, i32 0, i32 1
  store ptr %38, ptr %44, align 8
  %45 = load { ptr, ptr }, ptr %42, align 8
  %46 = extractvalue { ptr, ptr } %45, 1
  %47 = extractvalue { ptr, ptr } %45, 0
  %48 = call i64 %47(ptr %46)
  %49 = icmp ne i64 %48, 1
  br i1 %49, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %50 = load ptr, ptr @_llgo_int, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %50, i32 0, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 32
  store i8 %53, ptr %51, align 1
  %54 = inttoptr i64 %48 to ptr
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %55, i32 0, i32 0
  store ptr %50, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %55, i32 0, i32 1
  store ptr %54, ptr %57, align 8
  %58 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %55, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %58)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %59 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %60 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %59, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %60)
  %62 = load ptr, ptr @_llgo_main.I, align 8
  %63 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %62, ptr %61)
  br i1 %63, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %64 = load ptr, ptr @_llgo_int, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %64, i32 0, i32 6
  %66 = load i8, ptr %65, align 1
  %67 = or i8 %66, 32
  store i8 %67, ptr %65, align 1
  %68 = inttoptr i64 %178 to ptr
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, i32 0, i32 0
  store ptr %64, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, i32 0, i32 1
  store ptr %68, ptr %71, align 8
  %72 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %69, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %72)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %73 = load %main.S, ptr %3, align 8
  %74 = extractvalue %main.S %73, 0
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %74)
  %76 = load ptr, ptr @_llgo_main.I, align 8
  %77 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %76, ptr %75)
  br i1 %77, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %78 = load ptr, ptr @_llgo_int, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %78, i32 0, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = or i8 %80, 32
  store i8 %81, ptr %79, align 1
  %82 = inttoptr i64 %205 to ptr
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i32 0, i32 0
  store ptr %78, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, i32 0, i32 1
  store ptr %82, ptr %85, align 8
  %86 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %86)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %87 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %88 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %87, align 8
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %88)
  %90 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %88, 0
  %91 = getelementptr ptr, ptr %90, i64 4
  %92 = load ptr, ptr %91, align 8
  %93 = alloca { ptr, ptr }, align 8
  %94 = getelementptr inbounds { ptr, ptr }, ptr %93, i32 0, i32 0
  store ptr %92, ptr %94, align 8
  %95 = getelementptr inbounds { ptr, ptr }, ptr %93, i32 0, i32 1
  store ptr %89, ptr %95, align 8
  %96 = load { ptr, ptr }, ptr %93, align 8
  %97 = extractvalue { ptr, ptr } %96, 1
  %98 = extractvalue { ptr, ptr } %96, 0
  %99 = call %"github.com/goplus/llgo/internal/runtime.String" %98(ptr %97)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @18, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 3, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %99, %"github.com/goplus/llgo/internal/runtime.String" %103)
  %105 = xor i1 %104, true
  br i1 %105, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %106 = load ptr, ptr @_llgo_string, align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %108, i32 0, i32 0
  store ptr %106, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %108, i32 0, i32 1
  store ptr %107, ptr %110, align 8
  %111 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %108, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %111)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %112 = load %main.S, ptr %3, align 8
  %113 = extractvalue %main.S %112, 0
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %113)
  %115 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %113, 0
  %116 = getelementptr ptr, ptr %115, i64 4
  %117 = load ptr, ptr %116, align 8
  %118 = alloca { ptr, ptr }, align 8
  %119 = getelementptr inbounds { ptr, ptr }, ptr %118, i32 0, i32 0
  store ptr %117, ptr %119, align 8
  %120 = getelementptr inbounds { ptr, ptr }, ptr %118, i32 0, i32 1
  store ptr %114, ptr %120, align 8
  %121 = load { ptr, ptr }, ptr %118, align 8
  %122 = extractvalue { ptr, ptr } %121, 1
  %123 = extractvalue { ptr, ptr } %121, 0
  %124 = call %"github.com/goplus/llgo/internal/runtime.String" %123(ptr %122)
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 0
  store ptr @19, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %125, i32 0, i32 1
  store i64 3, ptr %127, align 4
  %128 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %125, align 8
  %129 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %124, %"github.com/goplus/llgo/internal/runtime.String" %128)
  %130 = xor i1 %129, true
  br i1 %130, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %131 = load ptr, ptr @_llgo_string, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %124, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 0
  store ptr %131, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 1
  store ptr %132, ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %136)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %137 = getelementptr inbounds %main.S, ptr %3, i32 0, i32 0
  %138 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %137, align 8
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %138)
  %140 = load ptr, ptr @_llgo_main.I, align 8
  %141 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %140, ptr %139)
  br i1 %141, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %142 = load ptr, ptr @_llgo_string, align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %232, ptr %143, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, i32 0, i32 0
  store ptr %142, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, i32 0, i32 1
  store ptr %143, ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %147)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %148 = load %main.S, ptr %3, align 8
  %149 = extractvalue %main.S %148, 0
  %150 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %149)
  %151 = load ptr, ptr @_llgo_main.I, align 8
  %152 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %151, ptr %150)
  br i1 %152, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %153 = load ptr, ptr @_llgo_string, align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %264, ptr %154, align 8
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, i32 0, i32 0
  store ptr %153, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, i32 0, i32 1
  store ptr %154, ptr %157, align 8
  %158 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %155, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %158)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @24, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 4, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %162)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_17:                                         ; preds = %_llgo_4
  %163 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %60, 1
  %164 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %164, ptr %61)
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %166, i32 0, i32 0
  store ptr %165, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %166, i32 0, i32 1
  store ptr %163, ptr %168, align 8
  %169 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %166, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %171 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %170, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %60, ptr %171, align 8
  %172 = alloca { ptr, ptr }, align 8
  %173 = getelementptr inbounds { ptr, ptr }, ptr %172, i32 0, i32 0
  store ptr @"main.one$bound", ptr %173, align 8
  %174 = getelementptr inbounds { ptr, ptr }, ptr %172, i32 0, i32 1
  store ptr %170, ptr %174, align 8
  %175 = load { ptr, ptr }, ptr %172, align 8
  %176 = extractvalue { ptr, ptr } %175, 1
  %177 = extractvalue { ptr, ptr } %175, 0
  %178 = call i64 %177(ptr %176)
  %179 = icmp ne i64 %178, 1
  br i1 %179, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @16, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 21, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = load ptr, ptr @_llgo_string, align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %183, ptr %185, align 8
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, i32 0, i32 0
  store ptr %184, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, i32 0, i32 1
  store ptr %185, ptr %188, align 8
  %189 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %186, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %189)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %190 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %74, 1
  %191 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %191, ptr %75)
  %193 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %193, i32 0, i32 0
  store ptr %192, ptr %194, align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %193, i32 0, i32 1
  store ptr %190, ptr %195, align 8
  %196 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %193, align 8
  %197 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %198 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %197, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %74, ptr %198, align 8
  %199 = alloca { ptr, ptr }, align 8
  %200 = getelementptr inbounds { ptr, ptr }, ptr %199, i32 0, i32 0
  store ptr @"main.one$bound", ptr %200, align 8
  %201 = getelementptr inbounds { ptr, ptr }, ptr %199, i32 0, i32 1
  store ptr %197, ptr %201, align 8
  %202 = load { ptr, ptr }, ptr %199, align 8
  %203 = extractvalue { ptr, ptr } %202, 1
  %204 = extractvalue { ptr, ptr } %202, 0
  %205 = call i64 %204(ptr %203)
  %206 = icmp ne i64 %205, 1
  br i1 %206, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr @17, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 21, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = load ptr, ptr @_llgo_string, align 8
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %210, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %213, i32 0, i32 0
  store ptr %211, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %213, i32 0, i32 1
  store ptr %212, ptr %215, align 8
  %216 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %213, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %216)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %217 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %138, 1
  %218 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %218, ptr %139)
  %220 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %220, i32 0, i32 0
  store ptr %219, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %220, i32 0, i32 1
  store ptr %217, ptr %222, align 8
  %223 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %220, align 8
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %225 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %224, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %138, ptr %225, align 8
  %226 = alloca { ptr, ptr }, align 8
  %227 = getelementptr inbounds { ptr, ptr }, ptr %226, i32 0, i32 0
  store ptr @"main.two$bound", ptr %227, align 8
  %228 = getelementptr inbounds { ptr, ptr }, ptr %226, i32 0, i32 1
  store ptr %224, ptr %228, align 8
  %229 = load { ptr, ptr }, ptr %226, align 8
  %230 = extractvalue { ptr, ptr } %229, 1
  %231 = extractvalue { ptr, ptr } %229, 0
  %232 = call %"github.com/goplus/llgo/internal/runtime.String" %231(ptr %230)
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %233, i32 0, i32 0
  store ptr @21, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %233, i32 0, i32 1
  store i64 3, ptr %235, align 4
  %236 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %233, align 8
  %237 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %232, %"github.com/goplus/llgo/internal/runtime.String" %236)
  %238 = xor i1 %237, true
  br i1 %238, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %239 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %240 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 0
  store ptr @20, ptr %240, align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %239, i32 0, i32 1
  store i64 21, ptr %241, align 4
  %242 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %239, align 8
  %243 = load ptr, ptr @_llgo_string, align 8
  %244 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %242, ptr %244, align 8
  %245 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %245, i32 0, i32 0
  store ptr %243, ptr %246, align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %245, i32 0, i32 1
  store ptr %244, ptr %247, align 8
  %248 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %245, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %248)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %249 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %149, 1
  %250 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %250, ptr %150)
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %252, i32 0, i32 0
  store ptr %251, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %252, i32 0, i32 1
  store ptr %249, ptr %254, align 8
  %255 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %252, align 8
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %257 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %149, ptr %257, align 8
  %258 = alloca { ptr, ptr }, align 8
  %259 = getelementptr inbounds { ptr, ptr }, ptr %258, i32 0, i32 0
  store ptr @"main.two$bound", ptr %259, align 8
  %260 = getelementptr inbounds { ptr, ptr }, ptr %258, i32 0, i32 1
  store ptr %256, ptr %260, align 8
  %261 = load { ptr, ptr }, ptr %258, align 8
  %262 = extractvalue { ptr, ptr } %261, 1
  %263 = extractvalue { ptr, ptr } %261, 0
  %264 = call %"github.com/goplus/llgo/internal/runtime.String" %263(ptr %262)
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 0
  store ptr @23, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 1
  store i64 3, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %265, align 8
  %269 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %264, %"github.com/goplus/llgo/internal/runtime.String" %268)
  %270 = xor i1 %269, true
  br i1 %270, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 0
  store ptr @22, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 1
  store i64 21, ptr %273, align 4
  %274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %271, align 8
  %275 = load ptr, ptr @_llgo_string, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %274, ptr %276, align 8
  %277 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %277, i32 0, i32 0
  store ptr %275, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %277, i32 0, i32 1
  store ptr %276, ptr %279, align 8
  %280 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %277, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %280)
  unreachable
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 2)
  store ptr %0, ptr @_llgo_main.impl, align 8
  %1 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @1, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 4, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, i32 0, i32 2
  store i64 0, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %8, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %6, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %12)
  store ptr %13, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @2, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 3, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @3, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 8, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  store ptr %25, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 0
  store ptr %29, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, i32 0, i32 2
  store i64 0, ptr %33, align 4
  %34 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %30, align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %36 = getelementptr ptr, ptr %35, i64 0
  store ptr %26, ptr %36, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 0
  store ptr %35, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 1
  store i64 1, ptr %39, align 4
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, i32 0, i32 2
  store i64 1, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %37, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %34, %"github.com/goplus/llgo/internal/runtime.Slice" %41, i1 false)
  store ptr %42, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %43 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %44 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %44, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %22, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %44, i32 0, i32 1
  store ptr %43, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %44, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %44, i32 0, i32 3
  store ptr @"main.(*impl).one", ptr %48, align 8
  %49 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %44, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %50, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %22, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %50, i32 0, i32 1
  store ptr %43, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %50, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %50, i32 0, i32 3
  store ptr @main.impl.one, ptr %54, align 8
  %55 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %50, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @4, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 3, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @5, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 8, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = load ptr, ptr @_llgo_string, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %66, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %67 = load ptr, ptr @_llgo_string, align 8
  %68 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 0
  store ptr %70, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 1
  store i64 0, ptr %73, align 4
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, i32 0, i32 2
  store i64 0, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %71, align 8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %77 = getelementptr ptr, ptr %76, i64 0
  store ptr %67, ptr %77, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 0
  store ptr %76, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 1
  store i64 1, ptr %80, align 4
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, i32 0, i32 2
  store i64 1, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %78, align 8
  %83 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %75, %"github.com/goplus/llgo/internal/runtime.Slice" %82, i1 false)
  store ptr %83, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %84 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %85 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %63, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 1
  store ptr %84, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %88, align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %85, i32 0, i32 3
  store ptr @"main.(*impl).two", ptr %89, align 8
  %90 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %85, align 8
  %91 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %63, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 1
  store ptr %84, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 3
  store ptr @main.impl.two, ptr %95, align 8
  %96 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %91, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %98 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %55, ptr %98, align 8
  %99 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %96, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 0
  store ptr %97, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 1
  store i64 2, ptr %102, align 4
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, i32 0, i32 2
  store i64 2, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %100, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %105, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %49, ptr %106, align 8
  %107 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %105, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %90, ptr %107, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 0
  store ptr %105, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 1
  store i64 2, ptr %110, align 4
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, i32 0, i32 2
  store i64 2, ptr %111, align 4
  %112 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %108, align 8
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @6, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 4, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr @7, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 9, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %116, %"github.com/goplus/llgo/internal/runtime.String" %120, ptr %14, %"github.com/goplus/llgo/internal/runtime.Slice" %104, %"github.com/goplus/llgo/internal/runtime.Slice" %112)
  %121 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %122 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr @8, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 8, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  %127 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, i32 0, i32 1
  store ptr %121, ptr %129, align 8
  %130 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %127, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 0
  store ptr @9, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 1
  store i64 8, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %131, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %134, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, i32 0, i32 1
  store ptr %122, ptr %137, align 8
  %138 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, align 8
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %140 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %139, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %130, ptr %140, align 8
  %141 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %139, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %138, ptr %141, align 8
  %142 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 0
  store ptr %139, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 1
  store i64 2, ptr %144, align 4
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, i32 0, i32 2
  store i64 2, ptr %145, align 4
  %146 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %142, align 8
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr @10, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 4, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr @11, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 0, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %150, %"github.com/goplus/llgo/internal/runtime.String" %154, %"github.com/goplus/llgo/internal/runtime.Slice" %146)
  store ptr %155, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %156 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %157 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %158 = load ptr, ptr @_llgo_main.I, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @12, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 8, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %163, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, i32 0, i32 1
  store ptr %156, ptr %166, align 8
  %167 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %164, align 8
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @13, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 8, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %171, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, i32 0, i32 1
  store ptr %157, ptr %174, align 8
  %175 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %172, align 8
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %177 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %176, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %167, ptr %177, align 8
  %178 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %176, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %175, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 0
  store ptr %176, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 1
  store i64 2, ptr %181, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 2
  store i64 2, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 0
  store ptr @14, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 1
  store i64 4, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %184, align 8
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr @15, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 6, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %187, %"github.com/goplus/llgo/internal/runtime.String" %191, %"github.com/goplus/llgo/internal/runtime.Slice" %183)
  store ptr %192, ptr @_llgo_main.I, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface")

declare i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr, ptr)

define i64 @"main.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call i64 %12(ptr %11)
  ret i64 %13
}

declare i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

define %"github.com/goplus/llgo/internal/runtime.String" @"main.two$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = alloca { ptr, ptr }, align 8
  %8 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %7, i32 0, i32 1
  store ptr %3, ptr %9, align 8
  %10 = load { ptr, ptr }, ptr %7, align 8
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" %12(ptr %11)
  ret %"github.com/goplus/llgo/internal/runtime.String" %13
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)
