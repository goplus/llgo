; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [52 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom", align 1
@2 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [56 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.one", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [56 x i8] c"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.two", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"I", align 1
@7 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@8 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %3, align 1
  %4 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %6, ptr %2)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %3, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %1, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %10, align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %11)
  %13 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, 0
  %14 = getelementptr ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = insertvalue { ptr, ptr } undef, ptr %15, 0
  %17 = insertvalue { ptr, ptr } %16, ptr %12, 1
  %18 = extractvalue { ptr, ptr } %17, 1
  %19 = extractvalue { ptr, ptr } %17, 0
  %20 = call i64 %19(ptr %18)
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = inttoptr i64 %20 to ptr
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %26 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %27 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %26, 0
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %27)
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %27, 0
  %30 = getelementptr ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = insertvalue { ptr, ptr } undef, ptr %31, 0
  %33 = insertvalue { ptr, ptr } %32, ptr %28, 1
  %34 = extractvalue { ptr, ptr } %33, 1
  %35 = extractvalue { ptr, ptr } %33, 0
  %36 = call i64 %35(ptr %34)
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %38 = load ptr, ptr @_llgo_int, align 8
  %39 = inttoptr i64 %36 to ptr
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %42 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %42, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  %46 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %45, ptr %44)
  br i1 %46, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %47 = load ptr, ptr @_llgo_int, align 8
  %48 = inttoptr i64 %122 to ptr
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %48, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %51 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %52 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %51, 0
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %52)
  %54 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  %55 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %54, ptr %53)
  br i1 %55, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %56 = load ptr, ptr @_llgo_int, align 8
  %57 = inttoptr i64 %138 to ptr
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %56, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %57, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %60 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %61 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %60, align 8
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %61)
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %61, 0
  %64 = getelementptr ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = insertvalue { ptr, ptr } undef, ptr %65, 0
  %67 = insertvalue { ptr, ptr } %66, ptr %62, 1
  %68 = extractvalue { ptr, ptr } %67, 1
  %69 = extractvalue { ptr, ptr } %67, 0
  %70 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %69(ptr %68)
  %71 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %70, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %72 = xor i1 %71, true
  br i1 %72, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %73 = load ptr, ptr @_llgo_string, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %70, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %74, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %76)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %77 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %78 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %77, 0
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %78)
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %78, 0
  %81 = getelementptr ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  %83 = insertvalue { ptr, ptr } undef, ptr %82, 0
  %84 = insertvalue { ptr, ptr } %83, ptr %79, 1
  %85 = extractvalue { ptr, ptr } %84, 1
  %86 = extractvalue { ptr, ptr } %84, 0
  %87 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %86(ptr %85)
  %88 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %87, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %89 = xor i1 %88, true
  br i1 %89, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %90 = load ptr, ptr @_llgo_string, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %87, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %90, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %92, ptr %91, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %93)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %94 = getelementptr inbounds %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %94, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %95)
  %97 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  %98 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %97, ptr %96)
  br i1 %98, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %99 = load ptr, ptr @_llgo_string, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %154, ptr %100, align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %99, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %101, ptr %100, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %102)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %103 = load %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %104 = extractvalue %"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.S" %103, 0
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %104)
  %106 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  %107 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %106, ptr %105)
  br i1 %107, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %108 = load ptr, ptr @_llgo_string, align 8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %171, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %110, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %112 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 1
  %113 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %113, ptr %44)
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %114, 0
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %115, ptr %112, 1
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %118 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %117, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %118, align 8
  %119 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.one$bound", ptr undef }, ptr %117, 1
  %120 = extractvalue { ptr, ptr } %119, 1
  %121 = extractvalue { ptr, ptr } %119, 0
  %122 = call i64 %121(ptr %120)
  %123 = icmp ne i64 %122, 1
  br i1 %123, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %124 = load ptr, ptr @_llgo_string, align 8
  %125 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %125, align 8
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %124, 0
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %126, ptr %125, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %127)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, 1
  %129 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %129, ptr %53)
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %130, 0
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %131, ptr %128, 1
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %134 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %133, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %134, align 8
  %135 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.one$bound", ptr undef }, ptr %133, 1
  %136 = extractvalue { ptr, ptr } %135, 1
  %137 = extractvalue { ptr, ptr } %135, 0
  %138 = call i64 %137(ptr %136)
  %139 = icmp ne i64 %138, 1
  br i1 %139, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %140 = load ptr, ptr @_llgo_string, align 8
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %141, align 8
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %140, 0
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %142, ptr %141, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %143)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %144 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, 1
  %145 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %145, ptr %96)
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %146, 0
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %147, ptr %144, 1
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %150 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %149, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %150, align 8
  %151 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.two$bound", ptr undef }, ptr %149, 1
  %152 = extractvalue { ptr, ptr } %151, 1
  %153 = extractvalue { ptr, ptr } %151, 0
  %154 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %153(ptr %152)
  %155 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %154, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %156 = xor i1 %155, true
  br i1 %156, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %157 = load ptr, ptr @_llgo_string, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %158, align 8
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %157, 0
  %160 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %159, ptr %158, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %160)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %161 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, 1
  %162 = load ptr, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %162, ptr %105)
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %163, 0
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %164, ptr %161, 1
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %167 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %166, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, ptr %167, align 8
  %168 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.two$bound", ptr undef }, ptr %166, 1
  %169 = extractvalue { ptr, ptr } %168, 1
  %170 = extractvalue { ptr, ptr } %168, 0
  %171 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %170(ptr %169)
  %172 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %171, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %173 = xor i1 %172, true
  br i1 %173, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %174 = load ptr, ptr @_llgo_string, align 8
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 21 }, ptr %175, align 8
  %176 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %174, 0
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %176, ptr %175, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %177)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 0, i64 2, i64 2)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl", align 8
  %1 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6)
  store ptr %7, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %9 = load ptr, ptr @_llgo_int, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %11, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %21 = getelementptr ptr, ptr %20, i64 0
  store ptr %13, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 2
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %25)
  store ptr %25, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %26 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 56 }, ptr undef, ptr undef, ptr undef }, ptr %26, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %27, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).one", 2
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).one", 3
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 56 }, ptr undef, ptr undef, ptr undef }, ptr %26, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %30, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).one", 2
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.one", 3
  %33 = load ptr, ptr @_llgo_string, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %35, ptr @_llgo_string, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %36 = load ptr, ptr @_llgo_string, align 8
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 0, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 0, 2
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %45 = getelementptr ptr, ptr %44, i64 0
  store ptr %37, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 1, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 2
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %49)
  store ptr %49, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %50 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 56 }, ptr undef, ptr undef, ptr undef }, ptr %50, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %51, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).two", 2
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).two", 3
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 56 }, ptr undef, ptr undef, ptr undef }, ptr %50, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %54, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.(*impl).two", 2
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %55, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.impl.two", 3
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %58 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %57, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr %58, align 8
  %59 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %57, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr %59, align 8
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, i64 2, 1
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 2, 2
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr %64, align 8
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 2, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68)
  %69 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %70 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 56 }, ptr undef }, ptr %69, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 56 }, ptr undef }, ptr %70, 1
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %73, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %71, ptr %74, align 8
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %73, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %72, ptr %75, align 8
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %73, 0
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 2, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 2, 2
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78)
  store ptr %79, ptr @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 52 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %81 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %80, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.I", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %83 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %84 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %82, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %85 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 56 }, ptr undef }, ptr %83, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 56 }, ptr undef }, ptr %84, 1
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %88 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %87, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %85, ptr %88, align 8
  %89 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %87, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %86, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %87, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 2, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %80, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
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

define i64 @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.one$bound"(ptr %0) {
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/compiler/cl/_testgo/ifaceprom.two$bound"(ptr %0) {
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
