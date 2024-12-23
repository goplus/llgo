; ModuleID = 'main'
source_filename = "main"

%main.S = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%main.impl = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.impl = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [8 x i8] c"main.one", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [8 x i8] c"main.two", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = linkonce global ptr null, align 8
@_llgo_main.I = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"I", align 1
@7 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@8 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @main.S.one(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %main.S %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.S, ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @main.S.two(%main.S %0) {
_llgo_0:
  %1 = alloca %main.S, align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %main.S %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.S, ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %6 = getelementptr ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %11(ptr %10)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %12
}

define i64 @"main.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"main.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %main.S, ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

define i64 @main.impl.one(%main.impl %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @main.impl.two(%main.impl %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"main.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call i64 @main.impl.one(%main.impl %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"main.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %main.impl, ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @main.impl.two(%main.impl %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
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
  %2 = alloca %main.S, align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %4 = load ptr, ptr @_llgo_main.impl, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %main.impl zeroinitializer, ptr %5, align 1
  %6 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %7 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %8 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %8, ptr %4)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, ptr %5, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %3, align 8
  %12 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %13 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %12, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %13)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, 0
  %16 = getelementptr ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = insertvalue { ptr, ptr } undef, ptr %17, 0
  %19 = insertvalue { ptr, ptr } %18, ptr %14, 1
  %20 = extractvalue { ptr, ptr } %19, 1
  %21 = extractvalue { ptr, ptr } %19, 0
  %22 = call i64 %21(ptr %20)
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = inttoptr i64 %22 to ptr
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %27)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %28 = load %main.S, ptr %2, align 8
  %29 = extractvalue %main.S %28, 0
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %29)
  %31 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %32 = getelementptr ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = insertvalue { ptr, ptr } undef, ptr %33, 0
  %35 = insertvalue { ptr, ptr } %34, ptr %30, 1
  %36 = extractvalue { ptr, ptr } %35, 1
  %37 = extractvalue { ptr, ptr } %35, 0
  %38 = call i64 %37(ptr %36)
  %39 = icmp ne i64 %38, 1
  br i1 %39, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %40 = load ptr, ptr @_llgo_int, align 8
  %41 = inttoptr i64 %38 to ptr
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %44 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %45 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %44, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %45)
  %47 = load ptr, ptr @_llgo_main.I, align 8
  %48 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %47, ptr %46)
  br i1 %48, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %49 = load ptr, ptr @_llgo_int, align 8
  %50 = inttoptr i64 %124 to ptr
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %51, ptr %50, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %52)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %53 = load %main.S, ptr %2, align 8
  %54 = extractvalue %main.S %53, 0
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %54)
  %56 = load ptr, ptr @_llgo_main.I, align 8
  %57 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %56, ptr %55)
  br i1 %57, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %58 = load ptr, ptr @_llgo_int, align 8
  %59 = inttoptr i64 %140 to ptr
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %58, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, ptr %59, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %61)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %62 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %62, align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %63)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %63, 0
  %66 = getelementptr ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = insertvalue { ptr, ptr } undef, ptr %67, 0
  %69 = insertvalue { ptr, ptr } %68, ptr %64, 1
  %70 = extractvalue { ptr, ptr } %69, 1
  %71 = extractvalue { ptr, ptr } %69, 0
  %72 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %71(ptr %70)
  %73 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %72, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %74 = xor i1 %73, true
  br i1 %74, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %75 = load ptr, ptr @_llgo_string, align 8
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %72, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %75, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %77, ptr %76, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %78)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %79 = load %main.S, ptr %2, align 8
  %80 = extractvalue %main.S %79, 0
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %80)
  %82 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %80, 0
  %83 = getelementptr ptr, ptr %82, i64 4
  %84 = load ptr, ptr %83, align 8
  %85 = insertvalue { ptr, ptr } undef, ptr %84, 0
  %86 = insertvalue { ptr, ptr } %85, ptr %81, 1
  %87 = extractvalue { ptr, ptr } %86, 1
  %88 = extractvalue { ptr, ptr } %86, 0
  %89 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %88(ptr %87)
  %90 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %89, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %91 = xor i1 %90, true
  br i1 %91, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %92 = load ptr, ptr @_llgo_string, align 8
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %89, ptr %93, align 8
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %92, 0
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, ptr %93, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %95)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %96 = getelementptr inbounds %main.S, ptr %2, i32 0, i32 0
  %97 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %96, align 8
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %97)
  %99 = load ptr, ptr @_llgo_main.I, align 8
  %100 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %99, ptr %98)
  br i1 %100, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %101 = load ptr, ptr @_llgo_string, align 8
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %156, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %101, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %103, ptr %102, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %104)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %105 = load %main.S, ptr %2, align 8
  %106 = extractvalue %main.S %105, 0
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %106)
  %108 = load ptr, ptr @_llgo_main.I, align 8
  %109 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %108, ptr %107)
  br i1 %109, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %110 = load ptr, ptr @_llgo_string, align 8
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %173, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %112, ptr %111, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %113)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_17:                                         ; preds = %_llgo_4
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, 1
  %115 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %115, ptr %46)
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %116, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %117, ptr %114, 1
  %119 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %120 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %119, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %45, ptr %120, align 8
  %121 = insertvalue { ptr, ptr } { ptr @"main.one$bound", ptr undef }, ptr %119, 1
  %122 = extractvalue { ptr, ptr } %121, 1
  %123 = extractvalue { ptr, ptr } %121, 0
  %124 = call i64 %123(ptr %122)
  %125 = icmp ne i64 %124, 1
  br i1 %125, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %126 = load ptr, ptr @_llgo_string, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %127, align 8
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %126, 0
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, ptr %127, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %129)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %130 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, 1
  %131 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %131, ptr %55)
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %132, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %133, ptr %130, 1
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %136 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %135, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %54, ptr %136, align 8
  %137 = insertvalue { ptr, ptr } { ptr @"main.one$bound", ptr undef }, ptr %135, 1
  %138 = extractvalue { ptr, ptr } %137, 1
  %139 = extractvalue { ptr, ptr } %137, 0
  %140 = call i64 %139(ptr %138)
  %141 = icmp ne i64 %140, 1
  br i1 %141, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %142 = load ptr, ptr @_llgo_string, align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %143, align 8
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %142, 0
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %144, ptr %143, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %145)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %146 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, 1
  %147 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %147, ptr %98)
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %148, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %149, ptr %146, 1
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %152 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %151, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %97, ptr %152, align 8
  %153 = insertvalue { ptr, ptr } { ptr @"main.two$bound", ptr undef }, ptr %151, 1
  %154 = extractvalue { ptr, ptr } %153, 1
  %155 = extractvalue { ptr, ptr } %153, 0
  %156 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %155(ptr %154)
  %157 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %156, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %158 = xor i1 %157, true
  br i1 %158, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %159 = load ptr, ptr @_llgo_string, align 8
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %160, align 8
  %161 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %159, 0
  %162 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %161, ptr %160, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %162)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, 1
  %164 = load ptr, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %165 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %164, ptr %107)
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %165, 0
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %166, ptr %163, 1
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %169 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %168, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %106, ptr %169, align 8
  %170 = insertvalue { ptr, ptr } { ptr @"main.two$bound", ptr undef }, ptr %168, 1
  %171 = extractvalue { ptr, ptr } %170, 1
  %172 = extractvalue { ptr, ptr } %170, 0
  %173 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %172(ptr %171)
  %174 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %173, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %175 = xor i1 %174, true
  br i1 %175, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %176 = load ptr, ptr @_llgo_string, align 8
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %177, align 8
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %176, 0
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %178, ptr %177, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %179)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 0, i64 2, i64 2)
  store ptr %0, ptr @_llgo_main.impl, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, i64 0, 1
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4)
  store ptr %5, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %6 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %9, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 0, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 0, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr ptr, ptr %18, i64 0
  store ptr %11, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %23)
  store ptr %23, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %24 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"main.(*impl).one", 2
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"main.(*impl).one", 3
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"main.(*impl).one", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @main.impl.one, 3
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %33, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %34 = load ptr, ptr @_llgo_string, align 8
  %35 = load ptr, ptr @_llgo_string, align 8
  %36 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 0, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 0, 2
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %43 = getelementptr ptr, ptr %42, i64 0
  store ptr %35, ptr %43, align 8
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, i64 1, 1
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 1, 2
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %47)
  store ptr %47, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %48 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"main.(*impl).two", 2
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"main.(*impl).two", 3
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"main.(*impl).two", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @main.impl.two, 3
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %56 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %55, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr %56, align 8
  %57 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %55, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr %57, align 8
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 2, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 2, 2
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %62 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %61, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr %62, align 8
  %63 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %61, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr %63, align 8
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %61, 0
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 2, 1
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66)
  %67 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %68 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr undef }, ptr %67, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr undef }, ptr %68, 1
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %72 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %71, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %69, ptr %72, align 8
  %73 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %71, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %70, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 2, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 2, 2
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76)
  store ptr %77, ptr @"main.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %79 = load ptr, ptr @_llgo_main.I, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %78, ptr @_llgo_main.I, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %81 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %82 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %80, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 8 }, ptr undef }, ptr %81, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 8 }, ptr undef }, ptr %82, 1
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %86 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %85, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %83, ptr %86, align 8
  %87 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %85, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %84, ptr %87, align 8
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %85, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 2, 1
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %78, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

define i64 @"main.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call i64 %10(ptr %9)
  ret i64 %11
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"main.two$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %10(ptr %9)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %11
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
