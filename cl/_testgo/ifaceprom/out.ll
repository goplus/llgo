; ModuleID = 'main'
source_filename = "main"

%main.S = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%main.impl = type {}
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.impl = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [9 x i8] c"main.impl", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [8 x i8] c"main.one", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"main.two", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = linkonce global ptr null, align 8
@_llgo_main.I = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [6 x i8] c"main.I", align 1
@8 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@9 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @main.S.one(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %main.S %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.S, ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = alloca { ptr, ptr }, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  store ptr %4, ptr %10, align 8
  %11 = load { ptr, ptr }, ptr %8, align 8
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call i64 %13(ptr %12)
  ret i64 %14
}

define %"github.com/goplus/llgo/internal/runtime.String" @main.S.two(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %main.S %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.S, ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = alloca { ptr, ptr }, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds { ptr, ptr }, ptr %8, i32 0, i32 1
  store ptr %4, ptr %10, align 8
  %11 = load { ptr, ptr }, ptr %8, align 8
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call %"github.com/goplus/llgo/internal/runtime.String" %13(ptr %12)
  ret %"github.com/goplus/llgo/internal/runtime.String" %14
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
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr @_llgo_main.impl, align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  store %main.impl zeroinitializer, ptr %5, align 1
  %6 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %7 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %8 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %8, ptr %4)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i32 0, i32 1
  store ptr %5, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %13, ptr %3, align 8
  %14 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %15)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %15, 0
  %18 = getelementptr ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = alloca { ptr, ptr }, align 8
  %21 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = getelementptr inbounds { ptr, ptr }, ptr %20, i32 0, i32 1
  store ptr %16, ptr %22, align 8
  %23 = load { ptr, ptr }, ptr %20, align 8
  %24 = extractvalue { ptr, ptr } %23, 1
  %25 = extractvalue { ptr, ptr } %23, 0
  %26 = call i64 %25(ptr %24)
  %27 = icmp ne i64 %26, 1
  br i1 %27, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = inttoptr i64 %26 to ptr
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 0
  store ptr %28, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, i32 0, i32 1
  store ptr %29, ptr %32, align 8
  %33 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %30, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %33)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %34 = load %main.S, ptr %2, align 8
  %35 = extractvalue %main.S %34, 0
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %35)
  %37 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %35, 0
  %38 = getelementptr ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  %40 = alloca { ptr, ptr }, align 8
  %41 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = getelementptr inbounds { ptr, ptr }, ptr %40, i32 0, i32 1
  store ptr %36, ptr %42, align 8
  %43 = load { ptr, ptr }, ptr %40, align 8
  %44 = extractvalue { ptr, ptr } %43, 1
  %45 = extractvalue { ptr, ptr } %43, 0
  %46 = call i64 %45(ptr %44)
  %47 = icmp ne i64 %46, 1
  br i1 %47, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %48 = load ptr, ptr @_llgo_int, align 8
  %49 = inttoptr i64 %46 to ptr
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 0
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 1
  store ptr %49, ptr %52, align 8
  %53 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %53)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %54 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %55 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %54, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %55)
  %57 = load ptr, ptr @_llgo_main.I, align 8
  %58 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %57, ptr %56)
  br i1 %58, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %59 = load ptr, ptr @_llgo_int, align 8
  %60 = inttoptr i64 %167 to ptr
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 0
  store ptr %59, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, i32 0, i32 1
  store ptr %60, ptr %63, align 8
  %64 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %61, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %64)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %65 = load %main.S, ptr %2, align 8
  %66 = extractvalue %main.S %65, 0
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %66)
  %68 = load ptr, ptr @_llgo_main.I, align 8
  %69 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %68, ptr %67)
  br i1 %69, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %70 = load ptr, ptr @_llgo_int, align 8
  %71 = inttoptr i64 %194 to ptr
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %72, i32 0, i32 0
  store ptr %70, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %72, i32 0, i32 1
  store ptr %71, ptr %74, align 8
  %75 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %72, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %75)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %76 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %77 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %76, align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %77)
  %79 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %77, 0
  %80 = getelementptr ptr, ptr %79, i64 4
  %81 = load ptr, ptr %80, align 8
  %82 = alloca { ptr, ptr }, align 8
  %83 = getelementptr inbounds { ptr, ptr }, ptr %82, i32 0, i32 0
  store ptr %81, ptr %83, align 8
  %84 = getelementptr inbounds { ptr, ptr }, ptr %82, i32 0, i32 1
  store ptr %78, ptr %84, align 8
  %85 = load { ptr, ptr }, ptr %82, align 8
  %86 = extractvalue { ptr, ptr } %85, 1
  %87 = extractvalue { ptr, ptr } %85, 0
  %88 = call %"github.com/goplus/llgo/internal/runtime.String" %87(ptr %86)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @0, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 3, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %88, %"github.com/goplus/llgo/internal/runtime.String" %92)
  %94 = xor i1 %93, true
  br i1 %94, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %95 = load ptr, ptr @_llgo_string, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %88, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 0
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 1
  store ptr %96, ptr %99, align 8
  %100 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %100)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %101 = load %main.S, ptr %2, align 8
  %102 = extractvalue %main.S %101, 0
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %102)
  %104 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %102, 0
  %105 = getelementptr ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  %107 = alloca { ptr, ptr }, align 8
  %108 = getelementptr inbounds { ptr, ptr }, ptr %107, i32 0, i32 0
  store ptr %106, ptr %108, align 8
  %109 = getelementptr inbounds { ptr, ptr }, ptr %107, i32 0, i32 1
  store ptr %103, ptr %109, align 8
  %110 = load { ptr, ptr }, ptr %107, align 8
  %111 = extractvalue { ptr, ptr } %110, 1
  %112 = extractvalue { ptr, ptr } %110, 0
  %113 = call %"github.com/goplus/llgo/internal/runtime.String" %112(ptr %111)
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @0, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 3, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %113, %"github.com/goplus/llgo/internal/runtime.String" %117)
  %119 = xor i1 %118, true
  br i1 %119, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %120 = load ptr, ptr @_llgo_string, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %113, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 0
  store ptr %120, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 1
  store ptr %121, ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %125)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %126 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %127 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %126, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %127)
  %129 = load ptr, ptr @_llgo_main.I, align 8
  %130 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %129, ptr %128)
  br i1 %130, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %131 = load ptr, ptr @_llgo_string, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %221, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 0
  store ptr %131, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, i32 0, i32 1
  store ptr %132, ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %133, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %136)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %137 = load %main.S, ptr %2, align 8
  %138 = extractvalue %main.S %137, 0
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %138)
  %140 = load ptr, ptr @_llgo_main.I, align 8
  %141 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %140, ptr %139)
  br i1 %141, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %142 = load ptr, ptr @_llgo_string, align 8
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %253, ptr %143, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, i32 0, i32 0
  store ptr %142, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, i32 0, i32 1
  store ptr %143, ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %144, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %147)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @9, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 4, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %151)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_17:                                         ; preds = %_llgo_4
  %152 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %55, 1
  %153 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %153, ptr %56)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, i32 0, i32 0
  store ptr %154, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, i32 0, i32 1
  store ptr %152, ptr %157, align 8
  %158 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %155, align 8
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %160 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %159, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %55, ptr %160, align 8
  %161 = alloca { ptr, ptr }, align 8
  %162 = getelementptr inbounds { ptr, ptr }, ptr %161, i32 0, i32 0
  store ptr @"main.one$bound", ptr %162, align 8
  %163 = getelementptr inbounds { ptr, ptr }, ptr %161, i32 0, i32 1
  store ptr %159, ptr %163, align 8
  %164 = load { ptr, ptr }, ptr %161, align 8
  %165 = extractvalue { ptr, ptr } %164, 1
  %166 = extractvalue { ptr, ptr } %164, 0
  %167 = call i64 %166(ptr %165)
  %168 = icmp ne i64 %167, 1
  br i1 %168, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 0
  store ptr @8, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 1
  store i64 21, ptr %171, align 4
  %172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %169, align 8
  %173 = load ptr, ptr @_llgo_string, align 8
  %174 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %172, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %175, i32 0, i32 0
  store ptr %173, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %175, i32 0, i32 1
  store ptr %174, ptr %177, align 8
  %178 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %175, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %178)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %179 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %66, 1
  %180 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %180, ptr %67)
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %182, i32 0, i32 0
  store ptr %181, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %182, i32 0, i32 1
  store ptr %179, ptr %184, align 8
  %185 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %187 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %186, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %66, ptr %187, align 8
  %188 = alloca { ptr, ptr }, align 8
  %189 = getelementptr inbounds { ptr, ptr }, ptr %188, i32 0, i32 0
  store ptr @"main.one$bound", ptr %189, align 8
  %190 = getelementptr inbounds { ptr, ptr }, ptr %188, i32 0, i32 1
  store ptr %186, ptr %190, align 8
  %191 = load { ptr, ptr }, ptr %188, align 8
  %192 = extractvalue { ptr, ptr } %191, 1
  %193 = extractvalue { ptr, ptr } %191, 0
  %194 = call i64 %193(ptr %192)
  %195 = icmp ne i64 %194, 1
  br i1 %195, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @8, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 21, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = load ptr, ptr @_llgo_string, align 8
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %199, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 0
  store ptr %200, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, i32 0, i32 1
  store ptr %201, ptr %204, align 8
  %205 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %202, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %205)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %206 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %127, 1
  %207 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %207, ptr %128)
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, i32 0, i32 0
  store ptr %208, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, i32 0, i32 1
  store ptr %206, ptr %211, align 8
  %212 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %209, align 8
  %213 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %214 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %213, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %127, ptr %214, align 8
  %215 = alloca { ptr, ptr }, align 8
  %216 = getelementptr inbounds { ptr, ptr }, ptr %215, i32 0, i32 0
  store ptr @"main.two$bound", ptr %216, align 8
  %217 = getelementptr inbounds { ptr, ptr }, ptr %215, i32 0, i32 1
  store ptr %213, ptr %217, align 8
  %218 = load { ptr, ptr }, ptr %215, align 8
  %219 = extractvalue { ptr, ptr } %218, 1
  %220 = extractvalue { ptr, ptr } %218, 0
  %221 = call %"github.com/goplus/llgo/internal/runtime.String" %220(ptr %219)
  %222 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %223 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 0
  store ptr @0, ptr %223, align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %222, i32 0, i32 1
  store i64 3, ptr %224, align 4
  %225 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %222, align 8
  %226 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %221, %"github.com/goplus/llgo/internal/runtime.String" %225)
  %227 = xor i1 %226, true
  br i1 %227, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr @8, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 21, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  %232 = load ptr, ptr @_llgo_string, align 8
  %233 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %231, ptr %233, align 8
  %234 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %234, i32 0, i32 0
  store ptr %232, ptr %235, align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %234, i32 0, i32 1
  store ptr %233, ptr %236, align 8
  %237 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %234, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %237)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %238 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %138, 1
  %239 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %239, ptr %139)
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %241, i32 0, i32 0
  store ptr %240, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %241, i32 0, i32 1
  store ptr %238, ptr %243, align 8
  %244 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %241, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %246 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %245, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %138, ptr %246, align 8
  %247 = alloca { ptr, ptr }, align 8
  %248 = getelementptr inbounds { ptr, ptr }, ptr %247, i32 0, i32 0
  store ptr @"main.two$bound", ptr %248, align 8
  %249 = getelementptr inbounds { ptr, ptr }, ptr %247, i32 0, i32 1
  store ptr %245, ptr %249, align 8
  %250 = load { ptr, ptr }, ptr %247, align 8
  %251 = extractvalue { ptr, ptr } %250, 1
  %252 = extractvalue { ptr, ptr } %250, 0
  %253 = call %"github.com/goplus/llgo/internal/runtime.String" %252(ptr %251)
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 0
  store ptr @0, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %254, i32 0, i32 1
  store i64 3, ptr %256, align 4
  %257 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %254, align 8
  %258 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %253, %"github.com/goplus/llgo/internal/runtime.String" %257)
  %259 = xor i1 %258, true
  br i1 %259, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @8, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 21, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = load ptr, ptr @_llgo_string, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %263, ptr %265, align 8
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, i32 0, i32 0
  store ptr %264, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, i32 0, i32 1
  store ptr %265, ptr %268, align 8
  %269 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %266, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %269)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @1, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 9, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 0, i64 2, i64 2)
  store ptr %4, ptr @_llgo_main.impl, align 8
  %5 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 0
  store ptr @2, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %7, i32 0, i32 1
  store i64 4, ptr %9, align 4
  %10 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %7, align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %12, i32 0, i32 1
  store i64 0, ptr %14, align 4
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %12, i32 0, i32 2
  store i64 0, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %12, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %10, i64 0, %"github.com/goplus/llgo/internal/runtime.Slice" %16)
  store ptr %17, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %18 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @3, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 3, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 0
  store ptr @4, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %23, i32 0, i32 1
  store i64 8, ptr %25, align 4
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %23, align 8
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %29, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %30 = load ptr, ptr @_llgo_int, align 8
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 0
  store ptr %34, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 1
  store i64 0, ptr %37, align 4
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, i32 0, i32 2
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %35, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %41 = getelementptr ptr, ptr %40, i64 0
  store ptr %31, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 0
  store ptr %40, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 1
  store i64 1, ptr %44, align 4
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, i32 0, i32 2
  store i64 1, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %42, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %39, %"github.com/goplus/llgo/internal/runtime.Slice" %46, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %47)
  store ptr %47, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %48 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %49 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %26, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 1
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %49, i32 0, i32 3
  store ptr @"main.(*impl).one", ptr %53, align 8
  %54 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %49, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %26, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 1
  store ptr %48, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 2
  store ptr @"main.(*impl).one", ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %55, i32 0, i32 3
  store ptr @main.impl.one, ptr %59, align 8
  %60 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %55, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr @0, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 3, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @5, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 8, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = load ptr, ptr @_llgo_string, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %71, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %72 = load ptr, ptr @_llgo_string, align 8
  %73 = load ptr, ptr @_llgo_string, align 8
  %74 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 0
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 1
  store i64 0, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 2
  store i64 0, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %83 = getelementptr ptr, ptr %82, i64 0
  store ptr %73, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 0
  store ptr %82, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 1
  store i64 1, ptr %86, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 2
  store i64 1, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, align 8
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %81, %"github.com/goplus/llgo/internal/runtime.Slice" %88, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %89)
  store ptr %89, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %90 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %91 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 1
  store ptr %90, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %91, i32 0, i32 3
  store ptr @"main.(*impl).two", ptr %95, align 8
  %96 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %91, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i32 0, i32 1
  store ptr %90, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i32 0, i32 2
  store ptr @"main.(*impl).two", ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %97, i32 0, i32 3
  store ptr @main.impl.two, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %97, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %104 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %103, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %60, ptr %104, align 8
  %105 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %103, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %102, ptr %105, align 8
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 0
  store ptr %103, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 1
  store i64 2, ptr %108, align 4
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, i32 0, i32 2
  store i64 2, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %106, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  %112 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %54, ptr %112, align 8
  %113 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %111, i64 1
  store %"github.com/goplus/llgo/internal/abi.Method" %96, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %114, i32 0, i32 0
  store ptr %111, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %114, i32 0, i32 1
  store i64 2, ptr %116, align 4
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %114, i32 0, i32 2
  store i64 2, ptr %117, align 4
  %118 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %114, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 0
  store ptr @2, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %119, i32 0, i32 1
  store i64 4, ptr %121, align 4
  %122 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %119, align 8
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 0
  store ptr @6, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %123, i32 0, i32 1
  store i64 4, ptr %125, align 4
  %126 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %123, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %122, %"github.com/goplus/llgo/internal/runtime.String" %126, ptr %18, %"github.com/goplus/llgo/internal/runtime.Slice" %110, %"github.com/goplus/llgo/internal/runtime.Slice" %118)
  %127 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %128 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %129 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 0
  store ptr @4, ptr %130, align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %129, i32 0, i32 1
  store i64 8, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %129, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %132, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, i32 0, i32 1
  store ptr %127, ptr %135, align 8
  %136 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %133, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @5, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 8, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %141, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %140, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %141, i32 0, i32 1
  store ptr %128, ptr %143, align 8
  %144 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %141, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %146 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %145, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %136, ptr %146, align 8
  %147 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %145, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %144, ptr %147, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 0
  store ptr %145, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 1
  store i64 2, ptr %150, align 4
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, i32 0, i32 2
  store i64 2, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %148, align 8
  %153 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %153, i32 0, i32 0
  store ptr @2, ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %153, i32 0, i32 1
  store i64 4, ptr %155, align 4
  %156 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %153, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr null, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 0, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %156, %"github.com/goplus/llgo/internal/runtime.String" %160, %"github.com/goplus/llgo/internal/runtime.Slice" %152)
  store ptr %161, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %162 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %163 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %164 = load ptr, ptr @_llgo_main.I, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %166 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 0
  store ptr @4, ptr %167, align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %166, i32 0, i32 1
  store i64 8, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %166, align 8
  %170 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %169, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, i32 0, i32 1
  store ptr %162, ptr %172, align 8
  %173 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %170, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 0
  store ptr @5, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 1
  store i64 8, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %174, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %178, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %177, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %178, i32 0, i32 1
  store ptr %163, ptr %180, align 8
  %181 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %178, align 8
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %183 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %173, ptr %183, align 8
  %184 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %181, ptr %184, align 8
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 0
  store ptr %182, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 1
  store i64 2, ptr %187, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 2
  store i64 2, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @2, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 4, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @7, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 6, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %193, %"github.com/goplus/llgo/internal/runtime.String" %197, %"github.com/goplus/llgo/internal/runtime.Slice" %189)
  store ptr %198, ptr @_llgo_main.I, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

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

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
