; ModuleID = 'github.com/goplus/llgo/cl/_testgo/ifaceprom'
source_filename = "github.com/goplus/llgo/cl/_testgo/ifaceprom"

%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = type {}
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [3 x i8] c"two", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [43 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom", align 1
@2 = private unnamed_addr constant [4 x i8] c"impl", align 1
@"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [3 x i8] c"one", align 1
@4 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.one", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [47 x i8] c"github.com/goplus/llgo/cl/_testgo/ifaceprom.two", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"I", align 1
@7 = private unnamed_addr constant [116 x i8] c"type assertion github.com/goplus/llgo/cl/_testgo/ifaceprom.I -> github.com/goplus/llgo/cl/_testgo/ifaceprom.I failed", align 1
@8 = private unnamed_addr constant [4 x i8] c"pass", align 1

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.String" %2
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.main"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %0, i8 0, i64 16, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" zeroinitializer, ptr %3, align 1
  %4 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %5 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %6 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %6, ptr %2)
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %3, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, ptr %1, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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
  %26 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %27 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %26, 0
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
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %43 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %42, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %43)
  %45 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, 1
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %47 = load ptr, ptr @_llgo_int, align 8
  %48 = inttoptr i64 %117 to ptr
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %47, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %48, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %50)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %51 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %52 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %51, 0
  %53 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %52)
  %54 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, 1
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %56 = load ptr, ptr @_llgo_int, align 8
  %57 = inttoptr i64 %128 to ptr
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %56, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %57, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %59)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %60 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
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
  %77 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %78 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %77, 0
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
  %94 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %95 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %94, align 8
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %95)
  %97 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, 1
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %99 = load ptr, ptr @_llgo_string, align 8
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %139, ptr %100, align 8
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %99, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %101, ptr %100, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %102)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %103 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %104 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %103, 0
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %104)
  %106 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %107 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, 1
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %108 = load ptr, ptr @_llgo_string, align 8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %151, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %108, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %110, ptr %109, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %111)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %113 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %112, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %43, ptr %113, align 8
  %114 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %112, 1
  %115 = extractvalue { ptr, ptr } %114, 1
  %116 = extractvalue { ptr, ptr } %114, 0
  %117 = call i64 %116(ptr %115)
  %118 = icmp ne i64 %117, 1
  br i1 %118, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %119 = load ptr, ptr @_llgo_string, align 8
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %119, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %121, ptr %120, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %122)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %124 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %123, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %52, ptr %124, align 8
  %125 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %123, 1
  %126 = extractvalue { ptr, ptr } %125, 1
  %127 = extractvalue { ptr, ptr } %125, 0
  %128 = call i64 %127(ptr %126)
  %129 = icmp ne i64 %128, 1
  br i1 %129, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %130 = load ptr, ptr @_llgo_string, align 8
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %131, align 8
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %130, 0
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %132, ptr %131, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %133)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %135 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %134, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %95, ptr %135, align 8
  %136 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %134, 1
  %137 = extractvalue { ptr, ptr } %136, 1
  %138 = extractvalue { ptr, ptr } %136, 0
  %139 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %138(ptr %137)
  %140 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %139, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %141 = xor i1 %140, true
  br i1 %141, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %142 = load ptr, ptr @_llgo_string, align 8
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %143, align 8
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %142, 0
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %144, ptr %143, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %145)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %147 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %146, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %104, ptr %147, align 8
  %148 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %146, 1
  %149 = extractvalue { ptr, ptr } %148, 1
  %150 = extractvalue { ptr, ptr } %148, 0
  %151 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %150(ptr %149)
  %152 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %151, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 })
  %153 = xor i1 %152, true
  br i1 %153, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %154 = load ptr, ptr @_llgo_string, align 8
  %155 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %155, align 8
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %154, 0
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %156, ptr %155, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %157)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, i64 25, i64 0, i64 2, i64 2)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, i64 0, 1
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4)
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
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %25, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %27 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %26, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 3
  %28 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %24, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %28, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %30 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %29, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one", 3
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
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %50 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %49, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %51 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %50, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 3
  %52 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %48, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %52, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %54 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %53, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two", 3
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
  %69 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef }, ptr %67, 1
  %70 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef }, ptr %68, 1
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %72 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %71, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %69, ptr %72, align 8
  %73 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %71, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %70, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %71, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 2, 1
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 2, 2
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76)
  store ptr %77, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 })
  %79 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %78, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %81 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %82 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %80, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %83 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef }, ptr %81, 1
  %84 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef }, ptr %82, 1
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

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"(ptr %0) {
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

define %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"(ptr %0) {
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
