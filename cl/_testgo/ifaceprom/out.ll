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
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %10 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %4)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %5, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  store %"github.com/goplus/llgo/internal/runtime.iface" %15, ptr %3, align 8
  %16 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %17 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %16, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %17)
  %19 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %17, 0
  %20 = getelementptr ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = alloca { ptr, ptr }, align 8
  %23 = getelementptr inbounds { ptr, ptr }, ptr %22, i32 0, i32 0
  store ptr %21, ptr %23, align 8
  %24 = getelementptr inbounds { ptr, ptr }, ptr %22, i32 0, i32 1
  store ptr %18, ptr %24, align 8
  %25 = load { ptr, ptr }, ptr %22, align 8
  %26 = extractvalue { ptr, ptr } %25, 1
  %27 = extractvalue { ptr, ptr } %25, 0
  %28 = call i64 %27(ptr %26)
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %30 = load ptr, ptr @_llgo_int, align 8
  %31 = inttoptr i64 %28 to ptr
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 1
  store ptr %31, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %35)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %36 = load %main.S, ptr %2, align 8
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
  %51 = inttoptr i64 %48 to ptr
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 0
  store ptr %50, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, i32 0, i32 1
  store ptr %51, ptr %54, align 8
  %55 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %55)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %56 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %57 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %56, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %57)
  %59 = load ptr, ptr @_llgo_main.I, align 8
  %60 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %59, ptr %58)
  br i1 %60, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %61 = load ptr, ptr @_llgo_int, align 8
  %62 = inttoptr i64 %173 to ptr
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 0
  store ptr %61, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 1
  store ptr %62, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %66)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %67 = load %main.S, ptr %2, align 8
  %68 = extractvalue %main.S %67, 0
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %68)
  %70 = load ptr, ptr @_llgo_main.I, align 8
  %71 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %70, ptr %69)
  br i1 %71, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %72 = load ptr, ptr @_llgo_int, align 8
  %73 = inttoptr i64 %204 to ptr
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 0
  store ptr %72, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, i32 0, i32 1
  store ptr %73, ptr %76, align 8
  %77 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %77)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %78 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %79 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %78, align 8
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %79)
  %81 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %79, 0
  %82 = getelementptr ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = alloca { ptr, ptr }, align 8
  %85 = getelementptr inbounds { ptr, ptr }, ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  %86 = getelementptr inbounds { ptr, ptr }, ptr %84, i32 0, i32 1
  store ptr %80, ptr %86, align 8
  %87 = load { ptr, ptr }, ptr %84, align 8
  %88 = extractvalue { ptr, ptr } %87, 1
  %89 = extractvalue { ptr, ptr } %87, 0
  %90 = call %"github.com/goplus/llgo/internal/runtime.String" %89(ptr %88)
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 0
  store ptr @0, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 1
  store i64 3, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %91, align 8
  %95 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %90, %"github.com/goplus/llgo/internal/runtime.String" %94)
  %96 = xor i1 %95, true
  br i1 %96, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %97 = load ptr, ptr @_llgo_string, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %90, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 0
  store ptr %97, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 1
  store ptr %98, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %102)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %103 = load %main.S, ptr %2, align 8
  %104 = extractvalue %main.S %103, 0
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %104)
  %106 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %104, 0
  %107 = getelementptr ptr, ptr %106, i64 4
  %108 = load ptr, ptr %107, align 8
  %109 = alloca { ptr, ptr }, align 8
  %110 = getelementptr inbounds { ptr, ptr }, ptr %109, i32 0, i32 0
  store ptr %108, ptr %110, align 8
  %111 = getelementptr inbounds { ptr, ptr }, ptr %109, i32 0, i32 1
  store ptr %105, ptr %111, align 8
  %112 = load { ptr, ptr }, ptr %109, align 8
  %113 = extractvalue { ptr, ptr } %112, 1
  %114 = extractvalue { ptr, ptr } %112, 0
  %115 = call %"github.com/goplus/llgo/internal/runtime.String" %114(ptr %113)
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @0, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 3, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %115, %"github.com/goplus/llgo/internal/runtime.String" %119)
  %121 = xor i1 %120, true
  br i1 %121, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %122 = load ptr, ptr @_llgo_string, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 0
  store ptr %122, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 1
  store ptr %123, ptr %126, align 8
  %127 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %127)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %128 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %129 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %128, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %129)
  %131 = load ptr, ptr @_llgo_main.I, align 8
  %132 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %131, ptr %130)
  br i1 %132, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %133 = load ptr, ptr @_llgo_string, align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %235, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %135, i32 0, i32 0
  store ptr %133, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %135, i32 0, i32 1
  store ptr %134, ptr %137, align 8
  %138 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %135, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %138)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %139 = load %main.S, ptr %2, align 8
  %140 = extractvalue %main.S %139, 0
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.IfaceType"(%"github.com/goplus/llgo/internal/runtime.iface" %140)
  %142 = load ptr, ptr @_llgo_main.I, align 8
  %143 = call i1 @"github.com/goplus/llgo/internal/runtime.Implements"(ptr %142, ptr %141)
  br i1 %143, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %144 = load ptr, ptr @_llgo_string, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %271, ptr %145, align 8
  %146 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 0
  store ptr %144, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, i32 0, i32 1
  store ptr %145, ptr %148, align 8
  %149 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %146, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %149)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @9, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 4, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %153)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_17:                                         ; preds = %_llgo_4
  %154 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %57, 1
  %155 = load ptr, ptr @_llgo_int, align 8
  %156 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %157 = load ptr, ptr @_llgo_string, align 8
  %158 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %159 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %159, ptr %58)
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %161, i32 0, i32 0
  store ptr %160, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %161, i32 0, i32 1
  store ptr %154, ptr %163, align 8
  %164 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %161, align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %166 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %165, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %57, ptr %166, align 8
  %167 = alloca { ptr, ptr }, align 8
  %168 = getelementptr inbounds { ptr, ptr }, ptr %167, i32 0, i32 0
  store ptr @"main.one$bound", ptr %168, align 8
  %169 = getelementptr inbounds { ptr, ptr }, ptr %167, i32 0, i32 1
  store ptr %165, ptr %169, align 8
  %170 = load { ptr, ptr }, ptr %167, align 8
  %171 = extractvalue { ptr, ptr } %170, 1
  %172 = extractvalue { ptr, ptr } %170, 0
  %173 = call i64 %172(ptr %171)
  %174 = icmp ne i64 %173, 1
  br i1 %174, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 0
  store ptr @8, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %175, i32 0, i32 1
  store i64 21, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %175, align 8
  %179 = load ptr, ptr @_llgo_string, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %178, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, i32 0, i32 0
  store ptr %179, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, i32 0, i32 1
  store ptr %180, ptr %183, align 8
  %184 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %181, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %184)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %185 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %68, 1
  %186 = load ptr, ptr @_llgo_int, align 8
  %187 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %188 = load ptr, ptr @_llgo_string, align 8
  %189 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %190 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %190, ptr %69)
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %192, i32 0, i32 0
  store ptr %191, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %192, i32 0, i32 1
  store ptr %185, ptr %194, align 8
  %195 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %192, align 8
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %197 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %196, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %68, ptr %197, align 8
  %198 = alloca { ptr, ptr }, align 8
  %199 = getelementptr inbounds { ptr, ptr }, ptr %198, i32 0, i32 0
  store ptr @"main.one$bound", ptr %199, align 8
  %200 = getelementptr inbounds { ptr, ptr }, ptr %198, i32 0, i32 1
  store ptr %196, ptr %200, align 8
  %201 = load { ptr, ptr }, ptr %198, align 8
  %202 = extractvalue { ptr, ptr } %201, 1
  %203 = extractvalue { ptr, ptr } %201, 0
  %204 = call i64 %203(ptr %202)
  %205 = icmp ne i64 %204, 1
  br i1 %205, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 0
  store ptr @8, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %206, i32 0, i32 1
  store i64 21, ptr %208, align 4
  %209 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %206, align 8
  %210 = load ptr, ptr @_llgo_string, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %209, ptr %211, align 8
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %212, i32 0, i32 0
  store ptr %210, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %212, i32 0, i32 1
  store ptr %211, ptr %214, align 8
  %215 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %212, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %215)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %216 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %129, 1
  %217 = load ptr, ptr @_llgo_int, align 8
  %218 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %219 = load ptr, ptr @_llgo_string, align 8
  %220 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %221 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %221, ptr %130)
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %223, i32 0, i32 0
  store ptr %222, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %223, i32 0, i32 1
  store ptr %216, ptr %225, align 8
  %226 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %223, align 8
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %228 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %227, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %129, ptr %228, align 8
  %229 = alloca { ptr, ptr }, align 8
  %230 = getelementptr inbounds { ptr, ptr }, ptr %229, i32 0, i32 0
  store ptr @"main.two$bound", ptr %230, align 8
  %231 = getelementptr inbounds { ptr, ptr }, ptr %229, i32 0, i32 1
  store ptr %227, ptr %231, align 8
  %232 = load { ptr, ptr }, ptr %229, align 8
  %233 = extractvalue { ptr, ptr } %232, 1
  %234 = extractvalue { ptr, ptr } %232, 0
  %235 = call %"github.com/goplus/llgo/internal/runtime.String" %234(ptr %233)
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 0
  store ptr @0, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 1
  store i64 3, ptr %238, align 4
  %239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %236, align 8
  %240 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %235, %"github.com/goplus/llgo/internal/runtime.String" %239)
  %241 = xor i1 %240, true
  br i1 %241, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %242 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 0
  store ptr @8, ptr %243, align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %242, i32 0, i32 1
  store i64 21, ptr %244, align 4
  %245 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %242, align 8
  %246 = load ptr, ptr @_llgo_string, align 8
  %247 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %245, ptr %247, align 8
  %248 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %248, i32 0, i32 0
  store ptr %246, ptr %249, align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %248, i32 0, i32 1
  store ptr %247, ptr %250, align 8
  %251 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %248, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %251)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %252 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %140, 1
  %253 = load ptr, ptr @_llgo_int, align 8
  %254 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %255 = load ptr, ptr @_llgo_string, align 8
  %256 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %257 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %258 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %257, ptr %141)
  %259 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %259, i32 0, i32 0
  store ptr %258, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %259, i32 0, i32 1
  store ptr %252, ptr %261, align 8
  %262 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %259, align 8
  %263 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %264 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.iface" }, ptr %263, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" %140, ptr %264, align 8
  %265 = alloca { ptr, ptr }, align 8
  %266 = getelementptr inbounds { ptr, ptr }, ptr %265, i32 0, i32 0
  store ptr @"main.two$bound", ptr %266, align 8
  %267 = getelementptr inbounds { ptr, ptr }, ptr %265, i32 0, i32 1
  store ptr %263, ptr %267, align 8
  %268 = load { ptr, ptr }, ptr %265, align 8
  %269 = extractvalue { ptr, ptr } %268, 1
  %270 = extractvalue { ptr, ptr } %268, 0
  %271 = call %"github.com/goplus/llgo/internal/runtime.String" %270(ptr %269)
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr @0, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 3, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  %276 = call i1 @"github.com/goplus/llgo/internal/runtime.StringEqual"(%"github.com/goplus/llgo/internal/runtime.String" %271, %"github.com/goplus/llgo/internal/runtime.String" %275)
  %277 = xor i1 %276, true
  br i1 %277, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 0
  store ptr @8, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 1
  store i64 21, ptr %280, align 4
  %281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %278, align 8
  %282 = load ptr, ptr @_llgo_string, align 8
  %283 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %281, ptr %283, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %284, i32 0, i32 0
  store ptr %282, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %284, i32 0, i32 1
  store ptr %283, ptr %286, align 8
  %287 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %284, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %287)
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
  %127 = load ptr, ptr @_llgo_int, align 8
  %128 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %129 = load ptr, ptr @_llgo_string, align 8
  %130 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 0
  store ptr @4, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 1
  store i64 8, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %131, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %134, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, i32 0, i32 1
  store ptr %128, ptr %137, align 8
  %138 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %135, align 8
  %139 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 0
  store ptr @5, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %139, i32 0, i32 1
  store i64 8, ptr %141, align 4
  %142 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %142, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, i32 0, i32 1
  store ptr %130, ptr %145, align 8
  %146 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %143, align 8
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %148 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %147, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %138, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %147, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %146, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 0
  store ptr %147, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 1
  store i64 2, ptr %152, align 4
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, i32 0, i32 2
  store i64 2, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %150, align 8
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @2, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 4, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr null, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 0, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %158, %"github.com/goplus/llgo/internal/runtime.String" %162, %"github.com/goplus/llgo/internal/runtime.Slice" %154)
  store ptr %163, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %164 = load ptr, ptr @_llgo_int, align 8
  %165 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %166 = load ptr, ptr @_llgo_string, align 8
  %167 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %168 = load ptr, ptr @_llgo_main.I, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %170 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 0
  store ptr @4, ptr %171, align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %170, i32 0, i32 1
  store i64 8, ptr %172, align 4
  %173 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %170, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %173, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, i32 0, i32 1
  store ptr %165, ptr %176, align 8
  %177 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %174, align 8
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @5, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 8, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %181, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, i32 0, i32 1
  store ptr %167, ptr %184, align 8
  %185 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  %187 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %186, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %177, ptr %187, align 8
  %188 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %186, i64 1
  store %"github.com/goplus/llgo/internal/abi.Imethod" %185, ptr %188, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 0
  store ptr %186, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 1
  store i64 2, ptr %191, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 2
  store i64 2, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @2, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 4, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @7, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 6, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %197, %"github.com/goplus/llgo/internal/runtime.String" %201, %"github.com/goplus/llgo/internal/runtime.Slice" %193)
  store ptr %202, ptr @_llgo_main.I, align 8
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
