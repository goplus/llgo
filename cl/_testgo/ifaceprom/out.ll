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

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.one"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %5, align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, 0
  %8 = getelementptr ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = insertvalue { ptr, ptr } undef, ptr %9, 0
  %11 = insertvalue { ptr, ptr } %10, ptr %6, 1
  %12 = extractvalue { ptr, ptr } %11, 1
  %13 = extractvalue { ptr, ptr } %11, 0
  %14 = call i64 %13(ptr %12)
  ret i64 %14
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.S.two"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %3, ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %2, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %6, align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %6)
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, 0
  %9 = getelementptr ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = insertvalue { ptr, ptr } undef, ptr %10, 0
  %12 = insertvalue { ptr, ptr } %11, ptr %7, 1
  %13 = extractvalue { ptr, ptr } %12, 1
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %14(ptr %13, ptr %15)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).one"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*S).two"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %12(ptr %11, ptr %13)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %0) {
_llgo_0:
  ret i64 1
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(ptr %0, %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1) {
_llgo_0:
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %0, align 8
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %0, align 1
  %2 = call i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one"(%"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %1)
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", ptr %1, align 1
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two"(ptr %3, %"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl" %2)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %0, align 8
  ret void
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
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %12, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %12)
  %14 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, 0
  %15 = getelementptr ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = insertvalue { ptr, ptr } undef, ptr %16, 0
  %18 = insertvalue { ptr, ptr } %17, ptr %13, 1
  %19 = extractvalue { ptr, ptr } %18, 1
  %20 = extractvalue { ptr, ptr } %18, 0
  %21 = call i64 %20(ptr %19)
  %22 = icmp ne i64 %21, 1
  br i1 %22, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = inttoptr i64 %21 to ptr
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, ptr %24, 1
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %27, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %27)
  unreachable

_llgo_2:                                          ; preds = %_llgo_0
  %28 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %29 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %28, 0
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %30)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %29, 0
  %33 = getelementptr ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = insertvalue { ptr, ptr } undef, ptr %34, 0
  %36 = insertvalue { ptr, ptr } %35, ptr %31, 1
  %37 = extractvalue { ptr, ptr } %36, 1
  %38 = extractvalue { ptr, ptr } %36, 0
  %39 = call i64 %38(ptr %37)
  %40 = icmp ne i64 %39, 1
  br i1 %40, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %41 = load ptr, ptr @_llgo_int, align 8
  %42 = inttoptr i64 %39 to ptr
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %42, 1
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %45, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %45)
  unreachable

_llgo_4:                                          ; preds = %_llgo_2
  %46 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %47 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %46, align 8
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %48, align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %48)
  %50 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br i1 true, label %_llgo_17, label %_llgo_18

_llgo_5:                                          ; preds = %_llgo_17
  %51 = load ptr, ptr @_llgo_int, align 8
  %52 = inttoptr i64 %136 to ptr
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %51, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr %52, 1
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %54, ptr %55, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %55)
  unreachable

_llgo_6:                                          ; preds = %_llgo_17
  %56 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %57 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %56, 0
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %57, ptr %58, align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %58)
  %60 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br i1 true, label %_llgo_19, label %_llgo_20

_llgo_7:                                          ; preds = %_llgo_19
  %61 = load ptr, ptr @_llgo_int, align 8
  %62 = inttoptr i64 %148 to ptr
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %62, 1
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, ptr %65, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %65)
  unreachable

_llgo_8:                                          ; preds = %_llgo_19
  %66 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %67 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %66, align 8
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, ptr %68, align 8
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %68)
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %67, 0
  %71 = getelementptr ptr, ptr %70, i64 4
  %72 = load ptr, ptr %71, align 8
  %73 = insertvalue { ptr, ptr } undef, ptr %72, 0
  %74 = insertvalue { ptr, ptr } %73, ptr %69, 1
  %75 = extractvalue { ptr, ptr } %74, 1
  %76 = extractvalue { ptr, ptr } %74, 0
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %76(ptr %75, ptr %77)
  %78 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %77, align 8
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %78, ptr %79, align 8
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %80, align 8
  %81 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %79, ptr %80)
  %82 = xor i1 %81, true
  br i1 %82, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %83 = load ptr, ptr @_llgo_string, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %78, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %84, 1
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %87, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %87)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  %88 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %89 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %88, 0
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, ptr %90, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %90)
  %92 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %89, 0
  %93 = getelementptr ptr, ptr %92, i64 4
  %94 = load ptr, ptr %93, align 8
  %95 = insertvalue { ptr, ptr } undef, ptr %94, 0
  %96 = insertvalue { ptr, ptr } %95, ptr %91, 1
  %97 = extractvalue { ptr, ptr } %96, 1
  %98 = extractvalue { ptr, ptr } %96, 0
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %98(ptr %97, ptr %99)
  %100 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %99, align 8
  %101 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, ptr %101, align 8
  %102 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %102, align 8
  %103 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %101, ptr %102)
  %104 = xor i1 %103, true
  br i1 %104, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %105 = load ptr, ptr @_llgo_string, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %100, ptr %106, align 8
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %105, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %107, ptr %106, 1
  %109 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %108, ptr %109, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %109)
  unreachable

_llgo_12:                                         ; preds = %_llgo_10
  %110 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, i32 0, i32 0
  %111 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %110, align 8
  %112 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %111, ptr %112, align 8
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %112)
  %114 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br i1 true, label %_llgo_21, label %_llgo_22

_llgo_13:                                         ; preds = %_llgo_21
  %115 = load ptr, ptr @_llgo_string, align 8
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %161, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %115, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %117, ptr %116, 1
  %119 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %118, ptr %119, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %119)
  unreachable

_llgo_14:                                         ; preds = %_llgo_21
  %120 = load %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S", ptr %0, align 8
  %121 = extractvalue %"github.com/goplus/llgo/cl/_testgo/ifaceprom.S" %120, 0
  %122 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %121, ptr %122, align 8
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr %122)
  %124 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br i1 true, label %_llgo_23, label %_llgo_24

_llgo_15:                                         ; preds = %_llgo_23
  %125 = load ptr, ptr @_llgo_string, align 8
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %177, ptr %126, align 8
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %125, 0
  %128 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %127, ptr %126, 1
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %128, ptr %129, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %129)
  unreachable

_llgo_16:                                         ; preds = %_llgo_23
  %130 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr %130, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_17:                                         ; preds = %_llgo_4
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %132 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %131, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %47, ptr %132, align 8
  %133 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %131, 1
  %134 = extractvalue { ptr, ptr } %133, 1
  %135 = extractvalue { ptr, ptr } %133, 0
  %136 = call i64 %135(ptr %134)
  %137 = icmp ne i64 %136, 1
  br i1 %137, label %_llgo_5, label %_llgo_6

_llgo_18:                                         ; preds = %_llgo_4
  %138 = load ptr, ptr @_llgo_string, align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %139, align 8
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %138, 0
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %140, ptr %139, 1
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %141, ptr %142, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %142)
  unreachable

_llgo_19:                                         ; preds = %_llgo_6
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %144 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %143, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %57, ptr %144, align 8
  %145 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound", ptr undef }, ptr %143, 1
  %146 = extractvalue { ptr, ptr } %145, 1
  %147 = extractvalue { ptr, ptr } %145, 0
  %148 = call i64 %147(ptr %146)
  %149 = icmp ne i64 %148, 1
  br i1 %149, label %_llgo_7, label %_llgo_8

_llgo_20:                                         ; preds = %_llgo_6
  %150 = load ptr, ptr @_llgo_string, align 8
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %151, align 8
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %150, 0
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %152, ptr %151, 1
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %153, ptr %154, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %154)
  unreachable

_llgo_21:                                         ; preds = %_llgo_12
  %155 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %156 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %155, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %111, ptr %156, align 8
  %157 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %155, 1
  %158 = extractvalue { ptr, ptr } %157, 1
  %159 = extractvalue { ptr, ptr } %157, 0
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %159(ptr %158, ptr %160)
  %161 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %160, align 8
  %162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %161, ptr %162, align 8
  %163 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %163, align 8
  %164 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %162, ptr %163)
  %165 = xor i1 %164, true
  br i1 %165, label %_llgo_13, label %_llgo_14

_llgo_22:                                         ; preds = %_llgo_12
  %166 = load ptr, ptr @_llgo_string, align 8
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %167, align 8
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %166, 0
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %168, ptr %167, 1
  %170 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %169, ptr %170, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %170)
  unreachable

_llgo_23:                                         ; preds = %_llgo_14
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %172 = getelementptr inbounds { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %171, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %121, ptr %172, align 8
  %173 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound", ptr undef }, ptr %171, 1
  %174 = extractvalue { ptr, ptr } %173, 1
  %175 = extractvalue { ptr, ptr } %173, 0
  %176 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %175(ptr %174, ptr %176)
  %177 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %176, align 8
  %178 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %177, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 3 }, ptr %179, align 8
  %180 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr %178, ptr %179)
  %181 = xor i1 %180, true
  br i1 %181, label %_llgo_15, label %_llgo_16

_llgo_24:                                         ; preds = %_llgo_14
  %182 = load ptr, ptr @_llgo_string, align 8
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 116 }, ptr %183, align 8
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %182, 0
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %184, ptr %183, 1
  %186 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %185, ptr %186, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %186)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 4 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 0, i64 2, i64 2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.impl", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, ptr %8, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %7, i64 0, ptr %8)
  store ptr %9, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %10 = load ptr, ptr @"_llgo_struct$n1H8J_3prDN3firMwPxBLVTkE5hJ9Di-AqNvaC9jczw", align 8
  %11 = load ptr, ptr @_llgo_int, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %13, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = load ptr, ptr @_llgo_int, align 8
  %16 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 0, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 0, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %23 = getelementptr ptr, ptr %22, i64 0
  store ptr %15, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %22, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 1, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 2
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, ptr %27, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, ptr %28, align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %27, ptr %28, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %29)
  store ptr %29, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %30 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %31 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %30, 1
  %32 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %31, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %32, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 3
  %34 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %30, 1
  %35 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %34, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).one", 2
  %36 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %35, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.one", 3
  %37 = load ptr, ptr @_llgo_string, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %39, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %40 = load ptr, ptr @_llgo_string, align 8
  %41 = load ptr, ptr @_llgo_string, align 8
  %42 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 0, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 0, 2
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %49 = getelementptr ptr, ptr %48, i64 0
  store ptr %41, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 2
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %53, ptr %54, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %55)
  store ptr %55, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %56 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %56, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 3
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef, ptr undef, ptr undef }, ptr %56, 1
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.(*impl).two", 2
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.impl.two", 3
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %36, ptr %64, align 8
  %65 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %63, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 2, 1
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 2, 2
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %33, ptr %70, align 8
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %69, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 2, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 2, 2
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, ptr %75, align 8
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, ptr %76, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %10, ptr %75, ptr %76)
  %77 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %78 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef }, ptr %77, 1
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef }, ptr %78, 1
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %82 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %81, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %79, ptr %82, align 8
  %83 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %81, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %80, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %84, i64 2, 1
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 2, 2
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, ptr %88, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %87, ptr %88)
  store ptr %89, ptr @"github.com/goplus/llgo/cl/_testgo/ifaceprom.iface$zZ89tENb5h_KNjvpxf1TXPfaWFYn0IZrZwyVf42lRtA", align 8
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 43 }, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %91, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %90, ptr %91)
  %93 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  store ptr %92, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/ifaceprom.I", align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %95 = load ptr, ptr @"_llgo_func$ETeB8WwW04JEq0ztcm-XPTJtuYvtpkjIsAc0-2NT9zA", align 8
  %96 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %94, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %97 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 47 }, ptr undef }, ptr %95, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 47 }, ptr undef }, ptr %96, 1
  %99 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %100 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %99, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %97, ptr %100, align 8
  %101 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %99, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %98, ptr %101, align 8
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %99, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 2, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 2, 2
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, ptr %105, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %92, ptr %105)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfaceType"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

define i64 @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.one$bound"(ptr %0) {
_llgo_0:
  %1 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %1, 0
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = call i64 %11(ptr %10)
  ret i64 %12
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(ptr, ptr)

define void @"github.com/goplus/llgo/cl/_testgo/ifaceprom.I.two$bound"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }, ptr %0, align 8
  %3 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface" } %2, 0
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %4)
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3, 0
  %7 = getelementptr ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = insertvalue { ptr, ptr } undef, ptr %8, 0
  %10 = insertvalue { ptr, ptr } %9, ptr %5, 1
  %11 = extractvalue { ptr, ptr } %10, 1
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void %12(ptr %11, ptr %13)
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %13, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, ptr %0, align 8
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
